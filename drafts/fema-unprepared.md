---
title: "FEMA was woefully unprepared for this pandemic"
author: Alex Kreidler
---

# FEMA was woefully unprepared for this pandemic

## It's software and development process has been a consistent failure for more than 18 years.

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
  * Not fully operational by the required deadline
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

## Our role

Obviously this is not the case, thus giving the open source community to fill
this need by providing a community-based system for identifying sources of
ventilators, along with exact requirements/estimates for individual hospitals
and clinics.

However I would be wary about trying to build our own system to deal with the
actual logistics in between the source and the destination. There is already an
entire industry of for-profit logistics software companies, and several open
source options:
https://www.goodfirms.co/blog/the-top-9-free-and-open-source-freight-software
https://opensource.com/tools/supply-chain-management

In fact some of these solutions might even work for some of the use-cases we
need here, but I think by narrowing our scope only to the source and
destination, we can offer one thing: simplicity and thus speed. Quickly
validating hospitals and receiving the data on their emergency needs, along with
finding the companies and people who can provide ventilators.

Some other reasons not to handle the logistics in between:

There's also the whole issue of bidding between different companies (both on the
price of ventilators themselves, and shipping costs), and any regulations
covering the shipment of medical devices.

By many indications, the federal government will not be dealing with either
sourcing or allocation of ventilators, even after serious pressure from
governors complaining about "competing with other states" (e.g. Andrew Cuomo).

I also believe it would be irresponsible for us to make any decisions regarding
allocation of resources, or to enable a system that would create such
competition for the benefit of some companies and at the expense of taxpayers.

However, simply listing sources and destinations would then allow companies to
proactively reach out to destinations they see the need for, and the inverse as
well. Some companies could handle the logistics on their own (such as
[Tesla airshipping ventilators from China to LA](https://www.usatoday.com/story/money/cars/2020/03/24/elon-musk-ventilators-tesla-coronavirus-covid-19-spacex/2905980001/)),
and some states would handle the logistics on behalf of the hospitals (e.g.
[New York](https://www1.nyc.gov/site/em/about/divisions-units.page))
