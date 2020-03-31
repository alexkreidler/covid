---
title: "FEMA was woefully unprepared for this pandemic"
author: Alex Kreidler
---

# FEMA was woefully unprepared for this pandemic

## It's flagship software system and entire IT development ecosystem has been a consistent failure for more than 18 years.

Companies and governments use logistics software to plan how to move inventory and important supplies from one point to another. Usually, knowing the source and destination of your goods is simple enough.

An entire industry has developed software that has pretty much perfected how to find the cheapest route from one warehouse to another, with minimal overhead. With the flexibility of the software and the goal of constantly decreasing costs, many industries have moved to just-in-time supply chains, to [minimize capital tied up in materials, inventory, and storage costs](https://www.ups-scs.com/solutions/white_papers/wp_JIT.pdf).

In the context of emergencies, however, supply chain management becomes a much a trickier issue. Just knowing the source and destination becomes much more difficult.

Depending on the situation this could involve:

- Sources
  - Strategic stockpiles
  - Donations from companies, individuals
  - Purchasing
    - Warehoused/stockpiled inventory
    - Need for ramping up commercial production - only in a drawn-out disaster
- Destination
  - Natural Disasters, Terrorism - usually short timespan, isolated locations that need supplies
  - Cyberattacks, Bioterrorism, Pandemic - potential for widespread damage, emergency resources needed in a wide variety of areas

It seems evident that an **emergency** supply chain management system must then have a much wider set of features and capabilities, and additionally that it should interface with a much wider group of individuals, corporations, and governments to provide up to date data on both the sources and destinations of emergency supplies.

FEMA uses a system called the **Logistics Supply Chain Management System (LSCMS)**. It's available [here](https://lscms.fema.gov/), but you need government credentials to access it.

The LCMS, based on the summaries linked below of it, has these features, allowing the system to help FEMA "track supplies provided by partners in other Federal agencies; nongovernmental organizations; state, local, and tribal governments; and the private sector."

It has never recieved any attention from the mainstream media, and the very little bit that has been written about it in government blogs and such has [generally been bad](https://fcw.com/articles/2014/10/02/fema-logistics-management.aspx).

In the area of logistics management in the government, the following agencies also do some, but not in emergency scenarios: Defense Logistics Agency, United Parcel Service, and Defense Commissary Agency.

## Issues

The linked article references a DHS Office of Inspector General (OIG) [report](https://www.oig.dhs.gov/assets/Mgmt/2014/OIG_14-151_Sep14.pdf) from 2014 that details the failings of the system at that point. In my opinion, page 26 onwards is the most interesting part to read.

The chilling conclusion of this report was:

> After spending about $247 million over 9 years, FEMA cannot be certain that its supply chain management system will be effective during a catastrophic disaster.

Some other takeaways were:

* They didn't have
  * the staff necessary to operate the system
  * a backup plan in case the system itself failed or went offline
* The system was repeatedly
  * Over budget
  * Not fully operational by their estimated timeframes/deadlines
* Since its inception in 2005, it was mainly developed by 1 Federal Program Manager and the rest solely by federal contractors, until mid-2012  
* FEMA did not do any testing on the system
* They didn't publish any procedures or documents on how to use the system

Additionally, the OIG also [gave testimony](https://docs.house.gov/meetings/HM/HM12/20180725/108605/HHRG-115-HM12-Wstate-KellyJ-20180725.pdf) at a House Subcommittee in 2018 which detailed the continued failures to that date.

Apparently the system has been plagued by issues since its inception in 2005, and as
recently as 2017-Present.

In my mind, in an ideal world, the government would be working perfectly such
that the supply chain management software would be open source and accessible to
the public and companies to donate ventilators and such at predetermined
locations, which would then be transported to their allocated location by FEMA's
transportation network.

## The role of the open source community

There are several open source projects in the tech community trying to assist with the pandemic response.

Many of them are trying to provide logistics-like support, such as helping hospitals by providing community donations, etc.

One of them is the [OpenVentilatorRegistry](https://github.com/openventilatorregistry/OpenVentilatorRegistry) project.

I wrote a bit about how to position OSS projects in this space in [this issue](https://github.com/openventilatorregistry/OpenVentilatorRegistry/issues/44#issuecomment-603531838). 

## Next steps

I've issued several [Freedom of Information Act](foia.gov) requests to FEMA regarding
the LSCMS system, and I hope to publish more when I get that information. Stay tuned!