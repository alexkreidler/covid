---
title: COVID-19 Alternative Testing Analysis
author: Alex Kreidler
bibliography: [library.bib]
# link-citations: true
# suppress-bibliography: true
---

# Introduction

The COVID-19 pandemic is likely the single greatest threat to public health we have ever seen.

Although many countries have taken aggressive and sufficient steps to control the outbreak,
other countries, including the U.S. and Italy, have fallen behind.

In this paper, we compare the most widely used existing testing methods to newer
state of the art methods that have massive potential for better scalability and throughput,
in both developed and developing countries.

# Testing Analysis and Comparison

Right now, labs across the world are using a diagnostic test based on a set of
procedures called
[polymerase chain reaction (PCR).](https://en.wikipedia.org/wiki/Polymerase_chain_reaction)
This method was invented in 1985 and won a Nobel prize. [^pcrdetails]

The basic idea is to take a sample from the patient, isolate and duplicate any
viral RNA/DNA in the sample, and then use a fluorescent pigment intercalated
with the DNA or a pH indicator to determine the amount of at least the presence
of viral RNA.

This method is **slow, expensive, complex**, and at least for COVID-19, there are
concerns about its detection accuracy. [^fn1]

In this article, I first describe the issues with our current testing method,
and then how an alternative method called RT-LAMP is a marked improvement in
every one of those areas.

RT-LAMP stands for
[reverse transcription loop-mediated isothermal amplification](https://en.wikipedia.org/wiki/Reverse_Transcription_Loop-mediated_Isothermal_Amplification)
and is a variation on the LAMP technique. [^lamp] It is the most popular and widely used
form of Isothermal Nucleic Acid Amplification Technology (iNAAT), which in general is more cost-effective
and energy-efficient than PCR-based methods.

<!-- I may write a separate article describing these and other types of testing
methods there are. However, these are the only two molecular assays that are in
real use for testing COVID-19. -->

Let's address each of these concerns individually.

[^pcrdetails]:

More specifically, they are using the realtime RT-PCR or qRT-PCR tests, which
just means that firstly, the amount of the virus is measured continuously
throughout the test (in "real-time"), and since SARS-CoV-2 is an RNA virus, RT
means that the test simply uses the complementary DNA (cDNA) to the RNA.
strands.

[^fn1]:

This is why China had a large bump in their number of reported cases: because
they changed the criteria to patients who had the symptoms, not just those who
tested positive on the test. Many cases can test negative multiple
times. See the Accuracy section.

[^lamp]:

@parida_loop_2008 provides a valuable description of the process, although it is out of date by now.
Additionally, @becherer_loop-mediated_2020 provides a modern review of sequence-dependent detection

## Time

In diagnostic testing for a pandemic, most experts would likely agree that
throughput is more important than the absolute time it takes for each test.
However, time is still important to the patients, and in many cases a shorter
absolute time allows for greater throughput.

According to ThermoFisher, one of the leading providers of qPCR tests, the
average running time for a PCR test is 2 hours. They also market their "Fast
PCR" tests, which cut that down to 60 minutes [@noauthor_benefits_nodate].

The most experimental research for PCR tests by using a micro-sized version of
the test can do 40 cycles of PCR in 6 minutes. However, this can only process
100 nanoliters of a sample, and would require many in parallel to gain
the requisite throughput capabilities [@neuzil_ultra_2006].

LAMP tests can be completed, after the pre-processing steps, in less than 20
seconds [@noauthor_lamp-covid-19_nodate].

## Cost

qPCR tests require large, expensive machines called thermocyclers, along with
reagents and other laboratory equipment necessary to extract and prepare the DNA
or RNA carefully before the test.

Some groups have shown that they have been able to decrease the "cost per
reaction" of PCR tests to around a dollar [@santos_development_2017].

However, the main issue here is the initial capital outlays (~$2000-$4000) for buying the
requisite equipment, which may not be a problem for existing labs in developed
countries, but can be an issue for remote locations. @wong_rapid_2015 and others have
attempted to build thermocyclers specifically for remote locations.

This is why LAMP tests have become popular as a point-of-care (POC) tests for some diseases
such as malaria and tuberculosis in many developing countries. [^malaria] @tambo_loop-mediated_2018 showed that LAMP could be
30% more sensitive than the rapid diagnostic tests (RDTs) which they had used previously.

[^malaria]:

See the Background section of @vasquez_diagnostic_2018, describing many previous papers applying
LAMP in the field.

## Complexity and use of Healthcare System Resources

Not only do qPCR tests have to be done in laboratories, but they also have more
specific requirements for the samples that need to be collected, and how they
are prepared.

Firstly, the PCR process, because it can be used for more advanced procedures,
requires careful preparation of the sample in the lab, which can lead to
shortages of requisite reagents, for DNA/RNA extraction, as has been widely reported.

However, LAMP tests have been shown to work directly on samples with little or
no preparation. In fact, during the Zika virus outbreak, various LAMP tests were
developed [@silva_loop-mediated_2020] that could test individual dead mosquitoes by simply placing them in a
test tube with water, and then running the test. [^multi]

[^multi]:

For example, @yaren_point_2017 was able to build a test for 3 diseases: the Zika virus,
Dengue virus, and the Chikungunya virus in one test (known as a **multiplexed** test) simply
based on unprocessed urine and blood plasma from humans, and a simple treatment protocol
for the mosquitoes.

Next, let's discuss the differences between types of sampling methods for
respiratory infections specifically.

For COVID-19, most testing facilities use a nasopharyngeal swab
which is uncomfortable and sometimes painful as a healthcare practitioner inserts
a swab into one's nasal cavity, often eliciting coughs or sneezes that could
spread the virus. This is why healthcare personnel (HCP)[^hcw] need to change all or parts of
their personal protective equipment (PPE) before each test [@health_personal_2020].

[^hcw]: Also sometimes referred to in literature as healthcare worker (HCW).

This leads to real challenges, including the _time added_ for healthcare personnel
to properly clean or change their PPE before a test.

It also poses a risk to the workers and the patients if they are
either reusing PPE or using substandard equipment (like a bandana for a face mask)
if the supply chain cannot provide adequate PPE due to the surging demand from doctors
and others who need it [@cnn_used_nodate; @cdc_strategies_2020].

Additionally, HCP at drive-thru testing stations or in a clinic performing sample collection using N95 masks
may be preventing a doctor in a hospital from caring for a critical-condition
patient because of a lack of masks.

LAMP may allow for alleviating this problem by allowing for patient-collected
samples in a patient's own home.

Studies have given somewhat mixed signals about the effectiveness of patient-collected
samples in general. For respiratory diseases in particular, self-collection shows a lot of promise.

However, for most respiratory diseases, all indications suggest that patient-collected samples
using saliva or a nasal swab (which is much easier and less uncomfortable) is
just as accurate as nasopharyngeal swabs [@dhiman_effectiveness_2012].

Some other methods, like self-collection of throat swabs such as in @fisher_evaluating_2019,
have shown not to add significantly to the sensitivity of detection.

For the SARS-Cov-2 virus specifically, preliminary research from @wang_detection_2020
has shown that the presence of the virus can be detected in many different type of samples.

Since this group analyzed data from patients at varying severity levels and with different viral loads, and since
they did not have access to medical data to correlate as such, there are no real conclusions we can draw about
the sensitivity, especially since they only collected samples from 8 patients for nasal swabs.

Further research is required in this area.

<!-- However, there have been no really large scale studies, mainly because we've never seen a pandemic this big before.
 -->

Additionally, the tests themselves generally have to be performed by trained workers,
and some tests that include viral isolation must be run in a biocontainment facility.

## Accuracy

qPCR testing is considered the "gold standard" for DNA and RNA quantification,
and is referred to as such in many papers, mainly because of its use in the
scientific community for 35 years.

However, during the outbreak of this Sars-Cov-2 virus, there have been concerns
about the accuracy of the specific test for COVID.

Firstly, studies have shown that asymptomatic cases and even symptomatic ones
may test negative multiple times and still be clinically diagnosed with
COVID-19 based on other methods like blood tests or CT scans [@hu_clinical_2020].

Additionally, even in symptomatic and severe cases, only 59% of suspected COVID
cases were detected via PCR tests, and up to 33% of negative PCR tests were
clinically diagnosed as having COVID. Thus, CT scans are recommended for more
comprehensive diagnosis in endemic areas [@ai_correlation_2020].

Thus, there are concerns about the accuracy of PCR tests for COVID. More
retrospective analysis of procedures, samples, etc will be required to determine
the issues with this test.

Based on the **existing published papers using RT-LAMP for diagnosing COVID-19**,
LAMP is at least as accurate, if not more accurate
than PCR [@zhang_rapid_2020; @lamb_rapid_2020; @yu_rapid_2020; @el-tholoth_single_2020].

So far, this article seems rather one-sided by presenting issues which are
important, and I have tried to discuss objectively, but seem to favor LAMP.

## So: Are there benefits to PCR?

Of course.

PCR is generally more amenable to complex experiments and new research that
require exact control over DNA.

It can be used for complex biological procedures such as "genotyping, cloning,
mutation detection, sequencing, microarrays, forensics, and paternity testing" [@noauthor_pcr_nodate].

However, for simple diagnostic testing, where the goal is to detect whether or
not the pathogen exists[^dets], it seems that using the best tool for the job,
and the tool that can scale to provide requisite capacity, even if it is not
through conventional labs, makes the most sense.

[^dets]:

This process consists of amplifying the RNA (in this case) such that it can be
detected by a fluorescent gel or a change in pH, but with some constraints.
For example, such that the test is **specific** and not **cross-reactive**
(doesn't detect similar viruses like SARS, MERS H1N1, etc). Additionally, the
test should have a high **sensitivity** and **low level of detection** (e.g.
it can detect the virus if only 10 genome equivalent copies of RNA are present
in a sample).

## Conclusion

Based on these main areas of concern, RT-LAMP is a much better candidate for
large-scale deployment of COVID-19 testing.

I believe that it will be a vital tool for testing in less developed countries.

As we have seen a lack of testing capacity in the US, I also believe augmenting
our existing testing system with some of the deployment possibilities outlined
in the section below would be greatly beneficial.

Additionally, I believe that all laboratories in the US should at least evaluate
ways to improve their capacity by deploying RT-LAMP in some way.

For some patients, performing a LAMP-based test and a PCR-based test might be
valuable, especially to study their accuracy in more detail. Some studies will
also use antibody-based detection methods like ELISA.

I hope that some labs will study the possibilities for using different samples
in detecting COVID, for example, the differences between nasal swabs, saliva,
urine, etc.

# Additional Thoughts

## Large-scale deployment options for RT-LAMP

This testing method could be deployed at a large scale in a variety of ways.

Firstly, we would want to enable patients to self-collect samples in their
homes. This would allow patients to preemptively self-quarantine, receive the
sampling tools in the mail and perform their own test.

One method is to send the entire testing apparatus to the patient. There has
been some research on 3D-printed testing devices, and even a test that runs in a
thermos, because LAMP requires the test tube to be heated to 60-65 degrees
centigrade or 140-149° F [@kadimisetty_fully_2018; @liao_smart_2016].

This would allow them to run the test for themselves as soon as they receive the
device, delivering results within 30 minutes. However, the issue of heating the
sample in a home is difficult.

Additionally, this might be more expensive due to shipping costs.

The other option is to have the patient collect their sample at home and mail it
to a testing facility that could run many tests at once, possibly even
thousands.

This could deliver test results soon after the sample is mailed in. Results
could be delivered electronically and reported to the CDC at the same time.

This could be enabled by regional testing facilities similar to an Amazon
fulfillment model, staffed by volunteers who follow basic standards for health
and safety and are not in a high-risk group.

### Regulatory issues

The tests and testing procedures would have to receive and Emergency Use
Authorization (EUA) from the FDA.

All laboratories processing human samples are required to follow the federal
Clinical Laboratory Improvement Amendments (CLIA) statute [@noauthor_clinical_nodate].

However, for simple tests[^tests] that use unprocessed specimens (like saliva or
nasal swabs) and pose no risk to the patient, one can apply for a CLIA waiver,
which then exempts the laboratory from inspection.

These facilities would likely be deployed on a regional basis in collaboration
with state governments and governors. This could also allow for the use of
National Guard personnel to operate the facilities.

[^tests]:

  Tests where there is little to no possible human error by the operator of the
  test, and no medical judgment required to interpret the test.

### Supply chain concerns

It doesn't seem to make sense to deploy entirely new facilities to scale up the
throughput capabilities if they would lack the required reagents and other
materials to run the tests.

However, I believe that the government could successfully figure out how to get
the requisite materials, as they are generally less per sample than PCR tests.

This is an area where I have little knowledge, and so I would love feedback and
help with this. If anyone with experience in laboratory supply chains would like to help,
it would be much appreciated.

They could read the four existing papers on RT-LAMP for COVID-19,
cited in the [Accuracy section](#accuracy) above and reach out to provide details on the potential availability
or ways to substitute or mass-produce the reagents and equipment required.

## Discussion of Testing at a National Scale

Early on, Anthony Fauci, director of the National Institute of Allergy and Infectious Diseases,
characterized the lack of testing in the US as "a failing," and since then, the media has tried
to parse and understand why that happened [@chuck_it_2020]. However, based on what I've observed,
even though there were errors with the original tests, it is mainly, as Dr. Fauci also described,
because "we're not set up for" getting tests easily to people, a.k.a deploying testing on a large
scale as described above.

He described how our healthcare system is optimized for a patient to doctor
relationship and that all systems for testing are based on that system, where then a doctor
would determine that a patient meets the criteria for a test, and then take the sample at
that location and either

1. Run the test in their own hospital system
2. Send it to a state lab or the CDC lab
3. Send it to a commercial lab company like LabCorp or Quest etc.

However, each of these locations is limited by throughput and has a limited ability to scale [@covid-19_test_capacity_tracker_covid-19_2020].
Although there were regulatory hurdles early in the process that limited these as some options,
I believe the main issue still is throughput.

Obviously this poses challenges for people without insurance or with inadequate insurance, or people
who don't have a regular doctor to go to.

This is an issue that has been discussed at WH Coronavirus Task Force briefings,
and they have made a point to mention the addition of community testing facilities
and drive-through facilities, which still usually have strict requirements.

The media has drawn comparisons to South Korea, which performed
extensive testing and was thus able to better control the virus by using
isolation rather than quarantines, and Italy, which in general didn't do as
much [@noauthor_special_2020].

However, there are reports of one town in Italy that tested all of its citizens,
isolating the positive cases and then retesting periodically. The virus in that
town ran its course and died out [@tondo_scientists_2020].

If we wanted to test as many people as possible in the United States we could
tie the cash check that seems to be a part
of the proposed economic stimulus package to completing a test. This would
then ensure with multiple rounds of data whether or not every American has the
virus.

However, at this point in the trajectory of the virus in the United States, it seems that
the level of testing that we need is too little and too late.

Many experts agree that during the brunt of the pandemic, it is simply infeasible to test
everyone that we want to, and even if we could, we wouldn't want to. @frieden_former_2020 provides an
important outline of how responses to a pandemic must adapt at different stages.

At a certain point, if the virus has infected a critical mass such that it can't be contained
by traditional surveillance measures, then social distancing must go into effect, meaning
that testing doesn't result in a different outcome for many people, as they are
already under quarantine or stay-at-home orders.

This is why in recent days we have seen states provide new guidance to prioritize
the allocation of testing to only certain people [@johnson_hard-hit_2020].

In retrospect, now that we understand the economic fallout of the pandemic better each passing day,
it seems clear that it would have been worthwhile to spend even tens of billions of dollars weeks earlier if
it enabled a South-Korea style situation with quick and effective testing
and contact tracing, allowing for isolation instead of larger-scale quarantines.

This might have allowed us to avoid the type of massive shutdowns that experts agree are
necessary for public safety when testing capacity is inadequate but are harmful to the economy.

Of course, explaining the possibility that the tests aren't completely accurate
to people is important as well. Otherwise, people who receive a false negative result
might return to work or social gatherings even if they are exhibiting symptoms or
are at high epidemiological risk.

Unfortunately, even weeks later, we still know that we are not testing enough [@goodnough_testing_2020; @rosenthal_opinion_2020].

## Why aren't we doing this?

The question that I have asked myself throughout the process and especially as I
have concluded this research is: Why does our developed health-care system feel
the need to stick with this type of test when there is a better option out
there?

This is the question I posed to David Walt and Pardis Sabeti, the two leaders of the [Diagnostics
Working Group at the Greater Boston Consortium on Pathogen Readiness](https://gbcpr.hms.harvard.edu/diagnostics).

Dr. Walt's response was:

> The simple answer is there is a huge installed base of instruments based on
> qPCR. Other methods, such as RT-LAMP, are just not as ingrained in the
> existing infrastructure. For a crisis, the most expedient way to implement
> assays is to use the one that is most widely accepted. I suspect there will be
> big changes going forward but for now, the community is relying on what is
> easiest to scale.

Most labs are happy with the tests they have, even if they recognize that on a
national and global scale, our testing resources are "a failing."

The truth is that some companies (about 4 startups) are selling at-home tests,
however, they are likely not RT-LAMP tests which I believe could be scaled up
much more.

## What can you do?

I urge you to [contact your representatives](https://www.usa.gov/elected-officials) at all levels of government to ask
them about deploying new testing methods.

Additionally, I hope you share this article, or other resources describing new
testing methods, with friends, family, and colleagues.

## Further resources

This article, along with my other research on COVID-19, is available at <https://covidtesting.alexkreidler.com/>

The Foundation for Innovative New Diagnostics has a list of all diagnostic tests
for COVID-19: <https://www.finddx.org/covid-19/pipeline/>

This list includes companies and groups working on a variety of tests.
