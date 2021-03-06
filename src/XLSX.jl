
__precompile__(true)
module XLSX

import ZipFile, EzXML, Missings

# https://github.com/fhs/ZipFile.jl/issues/39
if !method_exists(Base.nb_available, Tuple{ZipFile.ReadableFile})
    Base.nb_available(f::ZipFile.ReadableFile) = f.uncompressedsize - f._pos
end

const SPREADSHEET_NAMESPACE_XPATH_ARG = [ "xpath" => "http://schemas.openxmlformats.org/spreadsheetml/2006/main" ]

include("structs.jl")
include("cellref.jl")
include("sst.jl")
include("stream.jl")
include("table.jl")
include("relationship.jl")
include("read.jl")
include("workbook.jl")
include("worksheet.jl")
include("cell.jl")
include("styles.jl")
include("helper.jl")
include("deprecated.jl")
include("write.jl")

end # module XLSX
