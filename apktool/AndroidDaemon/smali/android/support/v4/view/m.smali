.class public final Landroid/support/v4/view/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/support/v4/view/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/o;

    invoke-direct {v0}, Landroid/support/v4/view/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/p;

    invoke-direct {v0}, Landroid/support/v4/view/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/p;->dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hasModifiers(Landroid/view/KeyEvent;I)Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/p;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static hasNoModifiers(Landroid/view/KeyEvent;)Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/p;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static isTracking(Landroid/view/KeyEvent;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/p;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static normalizeMetaState(I)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method

.method public static startTracking(Landroid/view/KeyEvent;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/m;->a:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->startTracking(Landroid/view/KeyEvent;)V

    return-void
.end method
