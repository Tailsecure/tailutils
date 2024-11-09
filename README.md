# Introduction

## What is `tailutils`?

`tailutils` is a Go library designed to simplify interactions with Tailscale network interfaces on a machine. It currently provides two primary functions:

- `HasTailscaleIP`: Checks whether the machine has an active Tailscale interface.
- `GetTailscaleIP`: Retrieves the IPv4 address assigned to the Tailscale interface.
- `GetTailscaleIP6`: Retrieves the IPv6 address assigned to the Tailscale interface.

These utilities are particularly useful for applications that need to:

- Determine if the machine is connected to a Tailscale VPN.
- Retrieve the Tailscale IP for network communications, logging, or configuration purposes.

## Why use `tailutils`?

Managing network interfaces and parsing IP ranges can be intricate and error-prone. tailutils abstracts these complexities, offering a straightforward API to interact with Tailscale interfaces reliably.

## License

Tailutils is licensed under the MIT License.
