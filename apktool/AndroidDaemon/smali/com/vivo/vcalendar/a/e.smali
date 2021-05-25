.class public final Lcom/vivo/vcalendar/a/e;
.super Lcom/vivo/vcalendar/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ROLE"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getRoleString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "REQ-PARTICIPANT"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NON-PARTICIPANT"

    goto :goto_0

    :pswitch_1
    const-string v0, "REQ-PARTICIPANT"

    goto :goto_0

    :pswitch_2
    const-string v0, "OPT-PARTICIPANT"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final toAttendeesContentValue(Landroid/content/ContentValues;)V
    .locals 6

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/a/c;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    const-string v4, "attendeeType"

    iget-object v0, p0, Lcom/vivo/vcalendar/a/e;->a:Ljava/lang/String;

    const-string v5, "REQ-PARTICIPANT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "OPT-PARTICIPANT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "attendeeRelationship"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "attendeeRelationship"

    iget-object v4, p0, Lcom/vivo/vcalendar/a/e;->a:Ljava/lang/String;

    const-string v5, "CHAIR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void

    :cond_1
    const-string v5, "CHAIR"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "NON-PARTICIPANT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    const-string v1, "OPT-PARTICIPANT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "NON-PARTICIPANT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_1
.end method
