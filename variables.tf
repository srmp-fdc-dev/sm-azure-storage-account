variable "tenant_id" {
type = string
}
variable "client_id" {
type = string
}
variable "client_secret" {
type = string
sensitive = true
}
variable "subscription_id" {
type = string
}
variable "resource_group_name" {
type = string
}
variable "resource_group_location" {
type = string
}
variable "storage_account_name" {
type = string
}
variable "account_tier" {
type = string
}
variable "account_replication_type" {
type = string
}
variable "account_kind" {
type = string
}