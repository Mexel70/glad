project "glad"
	kind "StaticLib"
    language "C"

	targetname ("%{wks.name}-%{prj.name}")
	targetdir (BinaryOutputDirectory)
	objdir (IntermediateOutputDirectory)

    includedirs {
        "include/glad/glad.h",
        "include/KHR/khrplatform.h"
    }

	files {
        "premake5.lua",
        
        "include/**.h",
        "src/**.c"
    }

    filter "system:windows"
        systemversion "latest"

    filter "system:linux"
        systemversion "latest"


	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"
	
	filter "configurations:Distribution"
		runtime "Release"
		optimize "On"
		inlining "Auto"