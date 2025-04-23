resource "aws_eks_cluster" "mycluster" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  version = var.kubernetes_version
}


resource "aws_eks_node_group" "mycluster" {
  cluster_name    = aws_eks_cluster.mycluster.name
  node_group_name = "${var.cluster_name}-ng"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  launch_template {
    id      = aws_launch_template.custom_ami_lt.id
    version = "$Latest"
  }

  depends_on = [aws_eks_cluster.mycluster]
}


resource "aws_launch_template" "custom_ami_lt" {
  name_prefix   = "${var.cluster_name}-lt-"
  image_id      = var.custom_ami_id
  instance_type = var.instance_type

  lifecycle {
    create_before_destroy = true
  }
}
