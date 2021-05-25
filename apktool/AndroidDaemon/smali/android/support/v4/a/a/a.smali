.class public final Landroid/support/v4/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/support/v4/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/a/a/h;

    invoke-direct {v0}, Landroid/support/v4/a/a/h;-><init>()V

    sput-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/a/a/g;

    invoke-direct {v0}, Landroid/support/v4/a/a/g;-><init>()V

    sput-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/a/a/f;

    invoke-direct {v0}, Landroid/support/v4/a/a/f;-><init>()V

    sput-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    goto :goto_0

    :cond_2
    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/a/a/e;

    invoke-direct {v0}, Landroid/support/v4/a/a/e;-><init>()V

    sput-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    goto :goto_0

    :cond_3
    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/a/a/d;

    invoke-direct {v0}, Landroid/support/v4/a/a/d;-><init>()V

    sput-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    goto :goto_0

    :cond_4
    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/a/a/c;

    invoke-direct {v0}, Landroid/support/v4/a/a/c;-><init>()V

    sput-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/support/v4/a/a/b;

    invoke-direct {v0}, Landroid/support/v4/a/a/b;-><init>()V

    sput-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v0, p0}, Landroid/support/v4/a/a/b;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v0, p0}, Landroid/support/v4/a/a/b;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public static jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v0, p0}, Landroid/support/v4/a/a/b;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/a/a/b;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public static setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/a/a/b;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    return-void
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/a/a/b;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/a/a/b;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/a/a/b;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/a/a/b;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/a/a/b;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/a/a/m;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/a/a/m;

    invoke-interface {p0}, Landroid/support/v4/a/a/m;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Landroid/support/v4/a/a/a;->a:Landroid/support/v4/a/a/b;

    invoke-virtual {v0, p0}, Landroid/support/v4/a/a/b;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
