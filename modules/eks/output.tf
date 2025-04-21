output "cluster_name" {
  value = aws_eks_cluster.mycluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.mycluster.endpoint
}

output "cluster_certificate_authority" {
  value = aws_eks_cluster.mycluster.certificate_authority[0].data
}

output "node_group_name" {
  value = aws_eks_node_group.mycluster.node_group_name
}
