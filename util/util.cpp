module;

#include <cstdio>
#include <format>

export module util;

export namespace util {

template<typename... Args>
auto print(std::FILE * stream, std::format_string<Args...> fmt, Args&&... args) -> void
{
    std::string data = std::format(fmt, std::forward<Args>(args)...);
    std::fwrite(data.data(), data.size(), 1, stream);
}

template<typename... Args>
auto print(std::format_string<Args...> fmt, Args&&... args) -> void
{
    print(stdout, fmt, std::forward<Args>(args)...);
}

}
