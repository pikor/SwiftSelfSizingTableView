# SwiftSelfSizingTableView

Simple project of self-sizing table view I've created after watching #231 session from 2015 Apple's WWDC (Cocoa Touch Best Practices).

From talk:

> Fully specify constraints
> 
Width = input; height = output
>
You want to use all those tips that I just talked about, thinking about this idea of your Auto Layout system is this machine that's taking width in as an input because the table view has a fixed width, and so your cell is going to be that wide. And then it's producing as an output the height of the cell. So any ambiguity in there, if you haven't fully specified your constraints, comes out as the height isn't what you want it to be.

> And if you are in the position where you find, you know, hey, I've specified all my constraints, **but I am not getting the height that I thought I should get**, I want to give you a **tip**, which is **try adding a constraint to your content view that specifies the height of the content view.** 
> 
>  So you are using, in fact, a height constraint on the content view. Then you can specify that in terms of your content.
>
> **Here I can say hey, content view height should be equal to the height of the label plus my top and bottom margins.** In this case, that's repeating work.  **I don't really need to do that here, and** I'll get the same thing.  **But if in your app you are not getting what you expect and you add a height constraint to your view, and then that causes the height of the cell to change, then that's a great indication that your constraints aren't giving you quite the logic that you expected them to.** So that's a great tool that you can use to figure that out.
