.class Landroid/support/v4/a/a/d;
.super Landroid/support/v4/a/a/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/a/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/a/a/j;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/a/a/j;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
