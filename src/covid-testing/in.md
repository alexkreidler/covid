---
title: COVID-19 Alternative Testing Analysis
author: Alex Kreidler
---

# Testing Analysis and Comparison

Right now, labs across the world are using a diagnostic test based on a set of
procedures called
[polymerase chain reaction (PCR).](https://en.wikipedia.org/wiki/Polymerase_chain_reaction)
This method was invented in 1985 and won a Nobel prize. [^pcrdetails]

The basic idea is to take a sample from the patient, isolate and duplicate any
viral RNA/DNA in the sample, and then use a fluorescent pigment intercalated
with the DNA or a pH indicator to determine the amount of at least the presence
of viral RNA.

This method is slow, expensive, complex, and at least for COVID-19, there are
concerns about its accuracy for detecting the virus. [^fn1]

In this article, I first describe the issues with our current testing method,
and then how an alternative method called RT-LAMP is a marked improvement in
every one of those areas.

RT-LAMP stands for
[reverse transcriptase loop-mediated isothermal amplification](https://en.wikipedia.org/wiki/Reverse_Transcription_Loop-mediated_Isothermal_Amplification)
and is a variation on the LAMP technique.

I may write a separate article describing these and other types of testing
methods there are. However, these are the only two molecular assays that are in
real use for testing COVID-19.

Let's address each of these concerns individually.

[^pcrdetails]:

  More specifically, they are using the realtime RT-PCR or qRT-PCR tests, which
  just means that firstly, the amount of the virus is measured continuously
  throughout the test (in "real-time"), and since SARS-CoV-2 is an RNA virus, RT
  means that the test simply uses the complementary DNA (cDNA) to the RNA
  strands.

[^fn1]:

This is why China had a large bump in their number of reported cases: because
they changed the criteria to patients who had the symptoms, not just those who
tested positive on the test. In fact, many cases will test negative multiple
times. See the Accuracy section.

## Time

In diagnostic testing for a pandemic, most experts would likely say that
throughput is more important than the absolute time it takes for each test.
However, time is still important to the patients, and in many cases a shorter
absolute time allows for greater throughput.

According to ThermoFisher, one of the leading providers of qPCR tests, the
average running time for a PCR test is 2 hours. They also market their "Fast
PCR" tests, which cut that down to 60 minutes. [@noauthor_benefits_nodate]

The most experimental research for PCR tests by using a micro-sized version of
the test can do 40 cycles of PCR in 6 minutes. However, this can only process
100 nanoliters of a sample, and would require many in parallel to gain
throughput capabilities. [@neuzil_ultra_2006]

LAMP tests can be completed, after the pre-processing steps, in less than 20
seconds.

## Cost

qPCR tests require large, expensive machines called thermocyclers, along with
reagents and other laboratory equipment necessary to extract and prepare the DNA
or RNA carefully before the test.

Some groups have shown that they have been able to decrease the "cost per
reaction" of PCR tests to around a dollar. [@santos_development_2017]

However, the main issue here is the initial capital outlays for buying the
requisite equipment, which may not be a problem for existing labs in developed
countries, but can be an issue for remote locations.

This is why LAMP tests have become popular as a more accurate form of rapid
diagnostic tests (RDTs) for some diseases such as malaria and tuberculosis which
are major issues in many developing countries.

## Complexity and use of Healthcare System Resources

Not only do qPCR tests have to be done in laboratories, but they also have more
specific requirements for the samples that need to be collected, and how they
are prepared.

Firstly, the PCR process, because it can be used for more advanced procedures,
requires careful preparation of the sample in the lab, which can lead to
shortages of requisite reagents, as has been widely reported.

However, LAMP tests have been shown to work directly on samples with little or
no preparation. In fact, during the Zika virus outbreak, a RT-LAMP test was
developed that could test individual dead mosquitoes by simply placing them in a
test tube with water, and then running the test.

For example, for COVID-19, most testing facilities use a nasopharyngeal swab
which is uncomfortable and sometimes painful as a healthcare practitioner sticks
a swab down one's nasal cavity, often eliciting coughs or sneezes that could
contain the virus. This is why healthcare workers need to wear and change into
new personal protective equipment (PPE) before every test.

This leads to real challenges, including the simple time added for healthcare
workers to properly clean or change their PPE before a test, and if the supply
chain cannot provide adequate PPE for doctors and others who need it.

For example, healthcare workers at drive-thru testing stations using N95 masks
may be preventing a doctor in a hospital from caring for a critical-condition
patient because of a lack of masks.

LAMP may allow for alleviating this problem by allowing for patient-collected
samples.

Studies have given mixed signals about the effectiveness of patient-collected
samples and there are concerns about their uniformity. However, for most
respiratory diseases, all indications suggest that patient-collected samples
using saliva or a nasal swab (which is much easier and less uncomfortable) is
just as accurate as nasopharyngeal swabs.

<!-- However, there have been no really large scale studies, mainly because we've never seen a pandemic this big before.
 -->

Additionally, the tests themselves generally have to be performed by highly
trained workers.

## Accuracy

qPCR testing is considered the "gold standard" for DNA and RNA quantification,
and is referred to as such in many papers, mainly because of its use in the
scientific community for 35 years.

However, during the outbreak of this Sars-Cov-2 virus, there have been concerns
about the accuracy of the specific test for COVID.

Firstly, studies have shown that asymptomatic cases and even symptomatic ones
may test negative multiple times, but still be clinically diagnosed with
COVID-19 for other reasons (blood tests, CT scans, etc). [@hu_clinical_2020]

Additionally, even in symptomatic and severe cases, only 59% of suspected COVID
cases were detected via PCR tests, and up to 33% of negative PCR tests were
clinically diagnosed as having COVID. Thus, CT scans are recommended for more
comprehensive diagnosis in endemic areas. [@ai_correlation_2020]

Thus, there are concerns about the accuracy of PCR tests for COVID. More
retrospective analysis of procedures, sample, etc will be required to determine
the issues with this test.

Based on published papers, RT-LAMP is at least as accurate, if not more accurate
than PCR for COVID testing.

Again, further analysis is needed to figure out possible reasons for this.

So far, this article seems rather one-sided by presenting issues which are
important, and I have tried to discuss objectively, but seem to favor LAMP.

## So: Are there benefits to PCR?

Of course.

PCR is generally more amenable to complex experiments and new research that
require exact control over DNA.

It can be used for complex biological procedures such as "genotyping, cloning,
mutation detection, sequencing, microarrays, forensics, and paternity testing."

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
  in a sample)

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
centigrade or 140-149 degrees F.

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
Clinical Laboratory Improvement Amendments (CLIA) statute.

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
help with this. If anyone could read the four existing papers on RT-LAMP and has
experience with lab supply chains, it would be great to reach out.

### At a national scale

It has been discussed that the lack of tests early in the process in the US was
a "failing." The media has drawn comparisons to South Korea, which performed
extensive testing and was thus able to better control the virus by using
isolation rather than quarantines, and Italy, which in general didn't do as
much.

However, there are reports of one town in Italy that tested all of its citizens,
isolating the positive cases and then retesting periodically. The virus in that
town ran its course and died out.

Another possibility is to test as many people as possible in the United States.
One idea for encouraging this is to tie the cash check that seems to be a part
of the proposed economic stimulus package to completing a self-test. This would
then ensure with multiple rounds of data whether or not every American has the
virus.

Of course, explaining the possibility that the tests aren't completely accurate
is important as well.

## Why aren't we doing this?

The question that I have asked myself throughout the process and especially as I
have concluded this research is: Why does our developed health-care system feel
the need to stick with this type of test when there is a better option out
there?

This is the question I posed to David Walt and Pardis Sabeti of Harvard and the
Greater Boston Consortium on Pathogen Readiness.

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

## Call to action: What can you do?

I urge you to contact your representatives at all levels of government to ask
them about deploying new testing methods.

Additionally, I hope you share this article, or other resources describing new
testing methods, with friends, family, and colleagues.

The Foundation for Innovative New Diagnostics has a list of all diagnostic tests
for COVID-19: https://www.finddx.org/covid-19/pipeline/

This list includes companies and groups working on a variety of tests.

# Works Cited
