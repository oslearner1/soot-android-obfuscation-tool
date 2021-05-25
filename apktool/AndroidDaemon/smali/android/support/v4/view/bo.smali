.class public final Landroid/support/v4/view/bo;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/support/v4/view/br;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/bt;

    invoke-direct {v0}, Landroid/support/v4/view/bt;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/bs;

    invoke-direct {v0}, Landroid/support/v4/view/bs;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/bq;

    invoke-direct {v0}, Landroid/support/v4/view/bq;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/bp;

    invoke-direct {v0}, Landroid/support/v4/view/bp;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/view/br;

    invoke-direct {v0}, Landroid/support/v4/view/br;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    goto :goto_0
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/br;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/br;->getNestedScrollAxes(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/br;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/br;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/br;->setLayoutMode(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/br;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/br;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method
