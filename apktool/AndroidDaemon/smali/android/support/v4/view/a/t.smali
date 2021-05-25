.class Landroid/support/v4/view/a/t;
.super Landroid/support/v4/view/a/s;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public canOpenPopup(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/a/e;->canOpenPopup(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v0

    return v0
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v0

    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v0

    return v0
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v0

    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v0

    return v0
.end method

.method public getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/a/e;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInputType(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/a/e;->getInputType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLiveRegion()I

    move-result v0

    return v0
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    return-object v0
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    move-result v0

    return v0
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result v0

    return v0
.end method

.method public isContentInvalid(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/a/e;->isContentInvalid(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDismissable(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/a/e;->isDismissable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultiLine(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/a/e;->isMultiLine(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/a/e;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/a/e;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setCanOpenPopup(Ljava/lang/Object;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/a/e;->setCanOpenPopup(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/a/e;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/a/e;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setContentInvalid(Ljava/lang/Object;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/a/e;->setContentInvalid(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setDismissable(Ljava/lang/Object;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/a/e;->setDismissable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setInputType(Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/a/e;->setInputType(Ljava/lang/Object;I)V

    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    return-void
.end method

.method public setMultiLine(Ljava/lang/Object;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/a/e;->setMultiLine(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/a/e;->setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
