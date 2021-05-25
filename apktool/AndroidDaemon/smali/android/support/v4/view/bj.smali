.class public final Landroid/support/v4/view/bj;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/support/v4/view/bn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/bm;

    invoke-direct {v0}, Landroid/support/v4/view/bm;-><init>()V

    sput-object v0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bn;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/bl;

    invoke-direct {v0}, Landroid/support/v4/view/bl;-><init>()V

    sput-object v0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bn;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/bk;

    invoke-direct {v0}, Landroid/support/v4/view/bk;-><init>()V

    sput-object v0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bn;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/view/bn;

    invoke-direct {v0}, Landroid/support/v4/view/bn;-><init>()V

    sput-object v0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bn;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bn;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bn;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/bj;->a:Landroid/support/v4/view/bn;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/bn;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
