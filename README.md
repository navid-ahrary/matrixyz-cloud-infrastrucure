1. **Create the Service Principal**:

   ```sh
   az ad sp create-for-rbac --name "wavecountstorageaccount-sp"
   ```

2. **Assign the "Storage Blob Data Contributor" Role**:

   ```sh
   az role assignment create --assignee <service-principal-id> --role "Storage Blob Data Contributor" --scope "/subscriptions/<subscription-id/resourceGroups/<resource-group-name>/providers/Microsoft.Storage/storageAccounts/<storage-name>"
   ```

3. **Assign the "Storage Account Key Operator Service Role"**:
   ```sh
   az role assignment create --assignee <service-principal-id> --role "Storage Account Key Operator Service Role" --scope "/subscriptions/<subscription-id/resourceGroups/<resource-group-name>/providers/Microsoft.Storage/storageAccounts/<storage-name>"
   ```

This way, the service principal will have both roles assigned, allowing it to manage blob data and list storage account keys.
