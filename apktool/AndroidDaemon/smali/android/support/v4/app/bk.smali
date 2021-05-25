.class public Landroid/support/v4/app/bk;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/app/PendingIntent;

.field private final d:Landroid/os/Bundle;

.field private e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/bk;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/app/bk;->a:I

    invoke-static {p2}, Landroid/support/v4/app/bm;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/bk;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v4/app/bk;->c:Landroid/app/PendingIntent;

    iput-object p4, p0, Landroid/support/v4/app/bk;->d:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 5

    iget v0, p1, Landroid/support/v4/app/NotificationCompat$Action;->a:I

    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Action;->b:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Action;->c:Landroid/app/PendingIntent;

    new-instance v3, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Action;->a(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/support/v4/app/bk;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/bk;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bk;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public final addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/bk;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bk;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bk;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bk;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Landroid/support/v4/app/NotificationCompat$Action;
    .locals 7

    iget-object v0, p0, Landroid/support/v4/app/bk;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/bk;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/bk;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/app/RemoteInput;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/RemoteInput;

    move-object v5, v0

    :goto_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    iget v1, p0, Landroid/support/v4/app/bk;->a:I

    iget-object v2, p0, Landroid/support/v4/app/bk;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/bk;->c:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/app/bk;->d:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;B)V

    return-object v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final extend(Landroid/support/v4/app/bl;)Landroid/support/v4/app/bk;
    .locals 0

    invoke-interface {p1, p0}, Landroid/support/v4/app/bl;->extend(Landroid/support/v4/app/bk;)Landroid/support/v4/app/bk;

    return-object p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/bk;->d:Landroid/os/Bundle;

    return-object v0
.end method
