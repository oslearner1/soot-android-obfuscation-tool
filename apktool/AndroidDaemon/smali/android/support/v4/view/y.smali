.class public final Landroid/support/v4/view/y;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/support/v4/view/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/ab;

    invoke-direct {v0}, Landroid/support/v4/view/ab;-><init>()V

    sput-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/aa;

    invoke-direct {v0}, Landroid/support/v4/view/aa;-><init>()V

    sput-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/z;

    invoke-direct {v0}, Landroid/support/v4/view/z;-><init>()V

    sput-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v4/view/ac;

    invoke-direct {v0}, Landroid/support/v4/view/ac;-><init>()V

    sput-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ac;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getAxisValue(Landroid/view/MotionEvent;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ac;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static getAxisValue(Landroid/view/MotionEvent;II)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/ac;->getAxisValue(Landroid/view/MotionEvent;II)F

    move-result v0

    return v0
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ac;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ac;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getSource(Landroid/view/MotionEvent;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ac;->getSource(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ac;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/y;->a:Landroid/support/v4/view/ac;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/ac;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
