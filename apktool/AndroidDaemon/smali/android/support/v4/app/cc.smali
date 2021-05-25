.class final Landroid/support/v4/app/cc;
.super Landroid/support/v4/app/INotificationSideChannel$Stub;


# instance fields
.field private synthetic a:Landroid/support/v4/app/NotificationCompatSideChannelService;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/NotificationCompatSideChannelService;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/cc;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-direct {p0}, Landroid/support/v4/app/INotificationSideChannel$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/NotificationCompatSideChannelService;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/app/cc;-><init>(Landroid/support/v4/app/NotificationCompatSideChannelService;)V

    return-void
.end method


# virtual methods
.method public final cancel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/cc;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/support/v4/app/cc;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->a(Landroid/support/v4/app/NotificationCompatSideChannelService;ILjava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/cc;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/cc;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/NotificationCompatSideChannelService;->cancel(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/support/v4/app/cc;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/support/v4/app/cc;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final cancelAll(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/cc;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/support/v4/app/cc;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->a(Landroid/support/v4/app/NotificationCompatSideChannelService;ILjava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/cc;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/cc;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->cancelAll(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/support/v4/app/cc;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/support/v4/app/cc;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/cc;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-static {}, Landroid/support/v4/app/cc;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->a(Landroid/support/v4/app/NotificationCompatSideChannelService;ILjava/lang/String;)V

    invoke-static {}, Landroid/support/v4/app/cc;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/cc;->a:Landroid/support/v4/app/NotificationCompatSideChannelService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/NotificationCompatSideChannelService;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/support/v4/app/cc;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/support/v4/app/cc;->restoreCallingIdentity(J)V

    throw v0
.end method
