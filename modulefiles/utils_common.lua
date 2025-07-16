whatis("Description: UFS_UTILS build environment common libraries")

help([[Load UFS Model common libraries]])

local ufs_modules = {
  {["bacio"]           = "2.4.1"},
  {["g2"]              = "3.5.1"},
  {["ip"]              = "5.1.0"},
  {["nemsio"]         = "2.5.4"},
  {["sp"]              = "2.5.0"},
  {["w3emc"]           = "2.10.0"},
  {["sfcio"]           = "1.4.2"},
  {["sigio"]            = "2.3.3"},
  {["zlib"]            = "1.2.13"},
  {["libpng"]          = "1.6.37"},
  {["netcdf-c"]        = "4.9.2"},
  {["netcdf-fortran"]  = "4.6.1"},
  {["esmf"]            = "8.8.0"},
  {["nco"]             = "5.2.4"}, 
}

for i = 1, #ufs_modules do
  for name, default_version in pairs(ufs_modules[i]) do
    local env_version_name = string.gsub(name, "-", "_") .. "_ver"
    load(pathJoin(name, os.getenv(env_version_name) or default_version))
  end
end
