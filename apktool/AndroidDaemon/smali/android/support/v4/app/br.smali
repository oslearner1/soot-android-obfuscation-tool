.class final Landroid/support/v4/app/br;
.super Landroid/support/v4/app/bq;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Landroid/support/v4/app/bm;Landroid/support/v4/app/bn;)Landroid/app/Notification;
    .locals 30

    new-instance v2, Landroid/support/v4/app/NotificationCompatApi21$Builder;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bm;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/bm;->B:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/bm;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/bm;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/bm;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/bm;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/bm;->i:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/bm;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/bm;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/bm;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/bm;->o:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/bm;->p:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/bm;->q:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bm;->k:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bm;->l:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/bm;->j:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bm;->n:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bm;->v:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bm;->w:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bm;->C:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bm;->x:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/bm;->y:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/bm;->z:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bm;->A:Landroid/app/Notification;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bm;->r:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bm;->s:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bm;->t:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v2 .. v29}, Landroid/support/v4/app/NotificationCompatApi21$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bm;->u:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompat;->a(Landroid/support/v4/app/bi;Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bm;->m:Landroid/support/v4/app/bx;

    invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompat;->a(Landroid/support/v4/app/bj;Landroid/support/v4/app/bx;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bn;->build(Landroid/support/v4/app/bm;Landroid/support/v4/app/bj;)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method public final getBundleForUnreadConversation(Landroid/support/v4/app/ca;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/ca;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/a;->getCategory(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUnreadConversationFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/cb;Landroid/support/v4/app/ci;)Landroid/support/v4/app/ca;
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/support/v4/app/a;->a(Landroid/os/Bundle;Landroid/support/v4/app/cb;Landroid/support/v4/app/ci;)Landroid/support/v4/app/ca;

    move-result-object v0

    return-object v0
.end method
