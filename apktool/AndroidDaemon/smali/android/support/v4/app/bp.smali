.class Landroid/support/v4/app/bp;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/bm;Landroid/support/v4/app/bn;)Landroid/app/Notification;
    .locals 5

    iget-object v0, p1, Landroid/support/v4/app/bm;->B:Landroid/app/Notification;

    iget-object v1, p1, Landroid/support/v4/app/bm;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/bm;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bm;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/bm;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v1, p1, Landroid/support/v4/app/bm;->j:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object v0
.end method

.method public getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionCount(Landroid/app/Notification;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionsFromParcelableArrayList(Ljava/util/ArrayList;)[Landroid/support/v4/app/NotificationCompat$Action;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBundleForUnreadConversation(Landroid/support/v4/app/ca;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalOnly(Landroid/app/Notification;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompat$Action;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnreadConversationFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/cb;Landroid/support/v4/app/ci;)Landroid/support/v4/app/ca;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isGroupSummary(Landroid/app/Notification;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
