.class Landroid/support/v4/a/a/i;
.super Ljava/lang/Object;


# direct methods
.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    return-void
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/a/a/m;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/a/a/m;

    invoke-interface {p0, p1}, Landroid/support/v4/a/a/m;->setTint(I)V

    :cond_0
    return-void
.end method

.method public static setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/a/a/m;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/a/a/m;

    invoke-interface {p0, p1}, Landroid/support/v4/a/a/m;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/a/a/m;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/a/a/m;

    invoke-interface {p0, p1}, Landroid/support/v4/a/a/m;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/a/a/n;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/a/a/n;

    invoke-direct {v0, p0}, Landroid/support/v4/a/a/n;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method
