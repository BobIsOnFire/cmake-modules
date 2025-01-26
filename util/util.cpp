module;

#include <stdio.h>

export module util;
import std;

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
    util::print(stdout, fmt, std::forward<Args>(args)...);
}

auto dummy() -> std::string
{
    return "asdfuq";
}

auto dummy2() -> int
{
    return 42;
}

}
