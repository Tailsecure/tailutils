# Tailutils
![Coverage](https://img.shields.io/badge/Coverage-100.0%25-brightgreen)

[![Go](https://github.com/Tailsecurity/tailutils/actions/workflows/go.yml/badge.svg)](https://github.com/Tailsecurity/tailutils/actions/workflows/go.yml)

## What is `tailutils`?

`tailutils` is a Go library designed to simplify interactions with Tailscale network interfaces on a machine. It provides a collection of functions to manage and interact with Tailscale interfaces, helping developers to easily work with Tailscale VPN connections. Currently, `tailutils` offers the following key functions:

### Key Functions:

- **`HasTailscaleIP`**: Checks whether the machine has an active Tailscale interface (IPv4 or IPv6).
- **`GetTailscaleIP`**: Retrieves the IPv4 address assigned to the Tailscale interface.
- **`GetTailscaleIP6`**: Retrieves the IPv6 address assigned to the Tailscale interface.
- **`GetInterfaceName`**: Retrieves the name of the network interface associated with a given Tailscale IP address.

These utilities are particularly useful for applications that need to:

- Determine if the machine is connected to a Tailscale VPN.
- Retrieve the Tailscale IP addresses for network communications, logging, or configuration purposes.

## How to Use `tailutils`

### Installation

You can add `tailutils` to your Go project by running:

```sh
go get github.com/tailsecurity/tailutils
```

### Usage Example

Below is an example of how you can use `tailutils` in your Go application to interact with Tailscale interfaces.

```go
package main

import (
    "fmt"
    "log"
    "github.com/tailsecurity/tailutils"
)

func main() {
    // Check if the machine has a Tailscale IP (either IPv4 or IPv6)
    hasTailscale, err := tailutils.HasTailscaleIP()
    if err != nil {
        log.Fatalf("Error checking Tailscale IP: %v", err)
    }
    if hasTailscale {
        fmt.Println("Tailscale interface detected.")
    } else {
        fmt.Println("No Tailscale interface detected.")
    }

    // Get the Tailscale IPv4 address
    ipv4, err := tailutils.GetTailscaleIP()
    if err != nil {
        log.Printf("Error getting Tailscale IPv4 address: %v", err)
    } else {
        fmt.Printf("Tailscale IPv4 address: %s\n", ipv4)
    }

    // Get the Tailscale IPv6 address
    ipv6, err := tailutils.GetTailscaleIP6()
    if err != nil {
        log.Printf("Error getting Tailscale IPv6 address: %v", err)
    } else {
        fmt.Printf("Tailscale IPv6 address: %s\n", ipv6)
    }

    // Get the name of the network interface for a given Tailscale IP address
    interfaceName, err := tailutils.GetInterfaceName(ipv4)
    if err != nil {
        log.Printf("Error getting interface name: %v", err)
    } else {
        fmt.Printf("Interface name: %s\n", interfaceName)
    }

    // Same thing, but for IPv6
    interfaceName6, err := tailutils.GetInterfaceName(ipv6)
    if err != nil {
        log.Printf("Error getting interface name: %v", err)
    } else {
        fmt.Printf("Interface name: %s\n", interfaceName6)
    }
}
```

### Features

- **IPv4 and IPv6 Support**: `tailutils` allows you to work with both IPv4 and IPv6 addresses assigned to Tailscale interfaces.
- **Network Interface Abstraction**: By abstracting network operations, `tailutils` simplifies working with Go's `net` package, making it easier to manage network interfaces and IP address parsing.

### API Reference

- **`func HasTailscaleIP() (bool, error)`**: Checks if the machine has an active Tailscale IP address (either IPv4 or IPv6).
- **`func GetTailscaleIP() (string, error)`**: Retrieves the IPv4 address of the Tailscale interface.
- **`func GetTailscaleIP6() (string, error)`**: Retrieves the IPv6 address of the Tailscale interface.
- **`func GetInterfaceName(ip string) (string, error)`**: Retrieves the name of the network interface for the given Tailscale IP address.

## Why use `tailutils`?

Managing network interfaces and parsing IP ranges can be intricate and error-prone. `tailutils` abstracts these complexities, offering a straightforward API to interact with Tailscale interfaces reliably. If you're building an application that needs to determine whether it is connected to a Tailscale VPN or wants to retrieve Tailscale IP addresses for various purposes, `tailutils` provides a clean and easy-to-use solution.

## Projects using `tailutils`

- [Padserve](https://github.com/tailsecurity/padserve) - The server component of a secure and private messaging system for Tailscale users.
- [Padclient](https://github.com/tailsecurity/padclient) - The client component of a secure and private messaging system for Tailscale users.

Want your project listed here? [Submit a Pull Request](https://github.com/tailsecurity/tailutils/pulls)!

## Contributing

We welcome contributions to `tailutils`! Please refer to the [CONTRIBUTING.md](docs/CONTRIBUTING.md) file for more information.

## License

`tailutils` is licensed under the MIT License. You are free to use, modify, and distribute this library as long as you adhere to the terms of the MIT License.

## Contact

If you have any questions, feel free to reach out via GitHub, or you can submit an issue directly in the repository.

Happy Tailscale hacking!

