.class Landroid/support/v4/a/a/c;
.super Landroid/support/v4/a/a/b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/a/a/j;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/a/a/j;->wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
