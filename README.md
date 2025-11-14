For too long, viewing a simple PDF attachment in your web client meant a disruptive detour: click to download, wait for the file, open it in a separate application, and only then could you view the document. It was a productivity killer—a tiny friction point that added up over a busy workday.

But that era is officially over.

With the Dynamics 365 Business Central 2025 Release Wave 1 (BC26), Microsoft has introduced a feature that fundamentally streamlines how you handle documentation: the ability to preview PDF attachments directly in the web client.

A Seamless, Productive Workflow

This new capability is all about keeping you focused and in the flow of your work. The primary business value is simple: saving you time and effort.

No more cluttering your Downloads folder with countless PDFs just to review an invoice, a report output, or an incoming document.

How it Works for the User

When you click on a PDF attachment in Business Central—whether it's on a document card or an incoming document entry—the file no longer automatically downloads. Instead, it opens instantly within a dedicated, in-client viewer experience.

Instant Preview: View the file immediately within the Business Central window.
Specialized Viewer: The experience is similar to the existing print preview      feature, offering smooth navigation, zooming, and scrolling tools.
Download Option Still Available: If you need a local copy, you can still easily      download the PDF file from the viewer at any time.

This feature works automatically across standard areas of Business Central, ensuring a better experience right out of the box.

A Win for Developers: The AL Update

While the end-user experience is seamless, this feature is also a game-changer for the development community working with the AL language.

Microsoft has provided new methods to ensure extension developers can easily adopt and integrate this modern functionality into their custom code, replacing the old pattern of forcing a download.

Extension developers can now use the following new AL methods, which follow the pattern of the File.Download method:

      

Method

File.ViewFromStream

File.View



By utilizing File.ViewFromStream(InS, PdfFileName + '.pdf', true)—often a single line of code—developers can ensure their solutions provide the same modern, download-free viewing experience for their users.

  

The introduction of direct PDF preview in the Business Central web client is a classic example of a small feature making a massive difference in daily productivity. Say goodbye to unnecessary downloads and hello to a smoother, faster way to work with your documents! Business Central Preview PDF
