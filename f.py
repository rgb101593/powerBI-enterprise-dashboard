import pandas as pd

data = {
    "ProductID": [1, 2, 3],
    "ProductName": ["Smartphone X", "Laptop Pro", "Tablet Air"],
    "InventoryLevel": [150, 80, 200],
    "ReorderThreshold": [50, 30, 100]
}

df = pd.DataFrame(data)
df.to_excel("data/shared_sources/inventory.xlsx", index=False)