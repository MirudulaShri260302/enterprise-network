# 🏗 Multi-Subnet Enterprise Network Simulation with Docker

## 📌 Project Overview

This project simulates a segmented enterprise network using Docker containers.  
It demonstrates subnetting, multi-homed routing, firewall segmentation using `iptables`, and packet-level inspection using `tcpdump`.

The objective was to replicate real-world corporate network architecture and enforce controlled inter-subnet communication.

---

## 🧱 Network Architecture

The simulated enterprise consists of three isolated subnets:

| Department   | Subnet         | Example IP    |
|--------------|---------------|---------------|
| HR           | 10.0.1.0/24   | 10.0.1.10     |
| Engineering  | 10.0.2.0/24   | 10.0.2.10     |
| DMZ          | 10.0.3.0/24   | 10.0.3.10     |

A multi-homed router container connects all three networks.

