# Azure Bicep - Time Zone Helper
An Azure Bicep helper for time zones.
With the arrival of user-defined functions and user-defined types for Bicep, I was thinking of a quick way to solve a common problem.. Different time zone formats for resources in Azure.

It can be quite tedious if you are using dynamic templates to deploy Function Apps, Virtual Machines and other resources that are dependent on a specific time zone format, and I decided to make a quick helper library for this specific case.

## WORK IN PROGRESS
The library is still very much **subject to change** and a **work in progress**, this is only a quick prototype.

Some time zones are not yet added but will be very soon!

With time, I might add more helpers - theres lot's of stuff that can be solved with the introduction of user-defined functions and user-defines types.

## Usage
See [example.bicep](example.bicep) for a use case with `Microsoft.Web/sites` (Function Apps and App Services).