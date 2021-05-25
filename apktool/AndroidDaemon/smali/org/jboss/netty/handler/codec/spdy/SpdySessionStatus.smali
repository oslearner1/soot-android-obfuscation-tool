.class public Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

.field public static final OK:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

.field public static final PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;


# instance fields
.field private final code:I

.field private final statusPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->OK:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    const/4 v1, 0x1

    const-string v2, "PROTOCOL_ERROR"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    const/16 v1, 0xb

    const-string v2, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "statusPhrase"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->code:I

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->statusPhrase:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(I)Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNKNOWN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->OK:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->compareTo(Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;)I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v1

    check-cast p1, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->code:I

    return v0
.end method

.method public getStatusPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->statusPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdySessionStatus;->getStatusPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
