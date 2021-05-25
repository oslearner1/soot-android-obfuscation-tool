.class public final Landroid/support/v4/view/av;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/support/v4/view/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0}, Landroid/support/v4/view/bg;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/bf;

    invoke-direct {v0}, Landroid/support/v4/view/bf;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/be;

    invoke-direct {v0}, Landroid/support/v4/view/be;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/bc;

    invoke-direct {v0}, Landroid/support/v4/view/bc;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/view/bb;

    invoke-direct {v0}, Landroid/support/v4/view/bb;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0}, Landroid/support/v4/view/az;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    :cond_5
    const/16 v1, 0xe

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/support/v4/view/ba;

    invoke-direct {v0}, Landroid/support/v4/view/ba;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    :cond_6
    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    new-instance v0, Landroid/support/v4/view/ay;

    invoke-direct {v0}, Landroid/support/v4/view/ay;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    new-instance v0, Landroid/support/v4/view/ax;

    invoke-direct {v0}, Landroid/support/v4/view/ax;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    if-lt v0, v1, :cond_9

    new-instance v0, Landroid/support/v4/view/aw;

    invoke-direct {v0}, Landroid/support/v4/view/aw;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    goto :goto_0

    :cond_9
    new-instance v0, Landroid/support/v4/view/bh;

    invoke-direct {v0}, Landroid/support/v4/view/bh;-><init>()V

    sput-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;)Landroid/support/v4/view/ck;
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->animate(Landroid/view/View;)Landroid/support/v4/view/ck;

    move-result-object v0

    return-object v0
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static combineMeasuredStates(II)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/cy;)Landroid/support/v4/view/cy;
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/cy;)Landroid/support/v4/view/cy;

    move-result-object v0

    return-object v0
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/bh;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/bh;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 6

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/bh;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 7

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/bh;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/x;
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/x;

    move-result-object v0

    return-object v0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getAlpha(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getLabelFor(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getLayerType(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getPivotX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getPivotY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getRotation(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getRotation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getRotationX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getRotationY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getScaleX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getScaleY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getScrollIndicators(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getTranslationX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getTranslationY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->getZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->isOpaque(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/cy;)Landroid/support/v4/view/cy;
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/cy;)Landroid/support/v4/view/cy;

    move-result-object v0

    return-object v0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/k;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/k;)V

    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/bh;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/bh;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/bh;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/bh;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/a;)V

    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setActivated(Landroid/view/View;Z)V

    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setFitsSystemWindows(Landroid/view/View;Z)V

    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setHasTransientState(Landroid/view/View;Z)V

    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setLabelFor(Landroid/view/View;I)V

    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/bh;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setLayoutDirection(Landroid/view/View;I)V

    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static setOnApplyWindowInsetsListener$33bd382c(Landroid/view/View;Landroid/support/v4/media/routing/d;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setOnApplyWindowInsetsListener$33bd382c(Landroid/view/View;Landroid/support/v4/media/routing/d;)V

    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setOverScrollMode(Landroid/view/View;I)V

    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/bh;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setPivotX(Landroid/view/View;F)V

    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setPivotY(Landroid/view/View;F)V

    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setRotationX(Landroid/view/View;F)V

    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setRotationY(Landroid/view/View;F)V

    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setScaleX(Landroid/view/View;F)V

    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setScrollIndicators(Landroid/view/View;I)V

    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/bh;->setScrollIndicators(Landroid/view/View;II)V

    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setX(Landroid/view/View;F)V

    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->setY(Landroid/view/View;F)V

    return-void
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/bh;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/av;->a:Landroid/support/v4/view/bh;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bh;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method
