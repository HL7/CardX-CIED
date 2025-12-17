# CardX CIED
<div style="text-align: left;">
<img src="image2022-7-27_8-34-11.png" width="400" >
</div>

### Background

Remote monitoring patients with Cardiac Implantable Electronic Devices (CIEDs) was first introduced in the early 2000s and has become the standard of care for managing patients. Work on interoperability began in 2006 when the Heart Rhythm Society (HRS) joined forces with the American College of Cardiology and Integrating the Healthcare Enterprise (IHE). This collaboration aimed to bring clinicians and industry engineers together to address challenges in clinical medicine through technological solutions. One key initiative was the creation of the Implantable Device Cardiac Observation (IDCO) profile. The IDCO profile defines the workflow, nomenclature (IEEE 11073-10103), and format (HL7 v2.6) used to exchange in-clinic and remote device interrogations. 

In September 2023, HRS, the European Heart Rhythm Association (EHRA), the Asia Pacific Heart Rhythm Society (APHRS), and the Latin America Heart Rhythm Society (LAHRS) published [2023 HRS/EHRA/APHRS/LAHRS expert consensus statement on practical management of the remote device clinic](https://www.heartrhythmjournal.com/article/S1547-5271(23)02011-8/fulltext). This evidence based text described the clinical benefits of remote monitoring, included clinical workflow guidance to achieve those outcomes, and described many of the existing barriers and challenges that remain. Optimal workflows require further coordination of various software systems including programmers, monitors, remote monitoring platforms, third party resources and electronic health records.

Recognizing the need to develop new interoperability solutions, a global group of clinicians, manufacturers, and third parties developed a strategy to develop FHIR profiles and implementation guides as part of the CardX FHIR accelerator. This text was published as the [2024 HRS perspective on advancing workflows for CIED remote monitoring](https://www.heartrhythmopen.com/article/S2666-5018(24)00315-5/fulltext#fig2). The paper identifies use cases throughout the total lifecycle of data usage for the care of CIED patients which would benefit from interoperability. These use cases are being used as scope and guidance by the CardX CIED Working group to sequentially develop as part of balloting and release cycles in this implementation guide.

<!-- To Satisfy the QA warnings "An HTML fragment from the set [dependency-table.xhtml, dependency-table-short.xhtml, dependency-table-nontech.xhtml] is not included anywhere in the produced implementation guide", "The HTML fragment 'globals-table.xhtml' is not included anywhere in the produced implementation guide", and "The HTML fragment 'ip-statements.xhtml' is not included anywhere in the produced implementation guide" -->

### IG Dependencies

This guide is based on the FHIR R4 specification and relies on other implementation guides, including:

{% include dependency-table-short.xhtml %} 

Refer to the [Validation Page](qa.html) for the complete list of dependencies.

### Global Profiles

{% include globals-table.xhtml %} 

### Copyrights

{% include ip-statements.xhtml %} 

### Package Downloads

{% include cross-version-analysis.xhtml %}

<div style="text-align: left;">
<img src="use-cases.jpg" width="700" >
</div>
