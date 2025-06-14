## README

Testing Seurat.

## Seurat version

```console
docker run --rm davetang/seurat_test:20250607 R -q -e 'packageVersion("Seurat")'
```
```
> packageVersion("Seurat")
[1] ‘5.3.0’
>
```

## Results

Results are the same when run on the same computer.

```console
md5sum i5-8500/*
```
```
bbe7766826b81f20b30df57ba95b2f78  i5-8500/20250607_085524_pca.tsv
91a1f19981a01f592d68109af4174c7c  i5-8500/20250607_085524_system_info.tsv
d8f3e0e633fbdfd86c58e2e762db9716  i5-8500/20250607_085524_umap.tsv
bbe7766826b81f20b30df57ba95b2f78  i5-8500/20250607_085641_pca.tsv
f6cbcb406093b5ac1d0a7103e82d575f  i5-8500/20250607_085641_system_info.tsv
d8f3e0e633fbdfd86c58e2e762db9716  i5-8500/20250607_085641_umap.tsv
```

Results are the same when run on the same computer.

```console
md5sum i7-9700/*
```
```
ef0b8ebc7055cb21be529bf9372e17ae  i7-9700/20250607_092219_pca.tsv
a74f448d9750ffd9877e0b26acdfdad6  i7-9700/20250607_092219_system_info.tsv
d8f3e0e633fbdfd86c58e2e762db9716  i7-9700/20250607_092219_umap.tsv
ef0b8ebc7055cb21be529bf9372e17ae  i7-9700/20250607_092254_pca.tsv
ca5b4f2f8b46ddf4a2ccd1a849df77b6  i7-9700/20250607_092254_system_info.tsv
d8f3e0e633fbdfd86c58e2e762db9716  i7-9700/20250607_092254_umap.tsv
```

Results are the same when run on the same computer.

```console
md5sum i7-12650H/*
```
```
85e7f9893e39c7f36493513423f9b542  i7-12650H/20250607_094027_pca.tsv
d10f43dab22f932f78754ebf90dee7e7  i7-12650H/20250607_094027_system_info.tsv
d8f3e0e633fbdfd86c58e2e762db9716  i7-12650H/20250607_094027_umap.tsv
85e7f9893e39c7f36493513423f9b542  i7-12650H/20250607_094122_pca.tsv
d10f43dab22f932f78754ebf90dee7e7  i7-12650H/20250607_094122_system_info.tsv
d8f3e0e633fbdfd86c58e2e762db9716  i7-12650H/20250607_094122_umap.tsv
```

Results are the same when run on the same computer.

```console
md5sum Cortex-A76/*
```
```
d0a87da09ff9050b49d8d53a3da51f96  Cortex-A76/20250607_133111_pca.tsv
b271267d841d4ff3e5e659a8d09680bd  Cortex-A76/20250607_133111_system_info.tsv
bc7241d7f6ae67e4f8a487a8564060dc  Cortex-A76/20250607_133111_umap.tsv
d0a87da09ff9050b49d8d53a3da51f96  Cortex-A76/20250607_133243_pca.tsv
b271267d841d4ff3e5e659a8d09680bd  Cortex-A76/20250607_133243_system_info.tsv
bc7241d7f6ae67e4f8a487a8564060dc  Cortex-A76/20250607_133243_umap.tsv
```
