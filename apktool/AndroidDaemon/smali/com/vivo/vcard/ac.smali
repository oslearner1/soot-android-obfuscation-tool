.class public final Lcom/vivo/vcard/ac;
.super Ljava/io/BufferedReader;


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public final getTotalmillisecond()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/vcard/ac;->a:J

    return-wide v0
.end method

.method public final peekLine()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/vivo/vcard/ac;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vivo/vcard/ac;->a:J

    sub-long v0, v3, v0

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/vivo/vcard/ac;->a:J

    iput-object v2, p0, Lcom/vivo/vcard/ac;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vcard/ac;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/vivo/vcard/ac;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcard/ac;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/vcard/ac;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/vcard/ac;->b:Z

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vivo/vcard/ac;->a:J

    sub-long v1, v3, v1

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/vivo/vcard/ac;->a:J

    goto :goto_0
.end method
