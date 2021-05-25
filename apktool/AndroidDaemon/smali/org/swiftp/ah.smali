.class public final Lorg/swiftp/ah;
.super Ljava/net/Socket;


# instance fields
.field private a:I

.field private b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;I)V
    .locals 0

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    iput p2, p0, Lorg/swiftp/ah;->a:I

    iput-object p1, p0, Lorg/swiftp/ah;->b:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public final getRemotePublicPort()I
    .locals 1

    iget v0, p0, Lorg/swiftp/ah;->a:I

    return v0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lorg/swiftp/ah;->b:Ljava/net/Socket;

    return-object v0
.end method

.method public final setRemotePublicPort(I)V
    .locals 0

    iput p1, p0, Lorg/swiftp/ah;->a:I

    return-void
.end method

.method public final setSocket(Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Lorg/swiftp/ah;->b:Ljava/net/Socket;

    return-void
.end method
