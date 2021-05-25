.class final Landroid/support/v4/app/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/cd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addResultsToIntent([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/app/a;->a([Landroid/support/v4/app/ch;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public final getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p1}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
