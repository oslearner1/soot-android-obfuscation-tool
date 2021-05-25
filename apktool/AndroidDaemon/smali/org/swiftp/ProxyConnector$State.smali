.class public final enum Lorg/swiftp/ProxyConnector$State;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CONNECTED:Lorg/swiftp/ProxyConnector$State;

.field public static final enum CONNECTING:Lorg/swiftp/ProxyConnector$State;

.field public static final enum DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

.field private static final synthetic ENUM$VALUES:[Lorg/swiftp/ProxyConnector$State;

.field public static final enum FAILED:Lorg/swiftp/ProxyConnector$State;

.field public static final enum UNREACHABLE:Lorg/swiftp/ProxyConnector$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/swiftp/ProxyConnector$State;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v2}, Lorg/swiftp/ProxyConnector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/swiftp/ProxyConnector$State;->CONNECTING:Lorg/swiftp/ProxyConnector$State;

    new-instance v0, Lorg/swiftp/ProxyConnector$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lorg/swiftp/ProxyConnector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/swiftp/ProxyConnector$State;->CONNECTED:Lorg/swiftp/ProxyConnector$State;

    new-instance v0, Lorg/swiftp/ProxyConnector$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lorg/swiftp/ProxyConnector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    new-instance v0, Lorg/swiftp/ProxyConnector$State;

    const-string v1, "UNREACHABLE"

    invoke-direct {v0, v1, v5}, Lorg/swiftp/ProxyConnector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/swiftp/ProxyConnector$State;->UNREACHABLE:Lorg/swiftp/ProxyConnector$State;

    new-instance v0, Lorg/swiftp/ProxyConnector$State;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lorg/swiftp/ProxyConnector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/swiftp/ProxyConnector$State;

    sget-object v1, Lorg/swiftp/ProxyConnector$State;->CONNECTING:Lorg/swiftp/ProxyConnector$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/swiftp/ProxyConnector$State;->CONNECTED:Lorg/swiftp/ProxyConnector$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/swiftp/ProxyConnector$State;->FAILED:Lorg/swiftp/ProxyConnector$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/swiftp/ProxyConnector$State;->UNREACHABLE:Lorg/swiftp/ProxyConnector$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/swiftp/ProxyConnector$State;->DISCONNECTED:Lorg/swiftp/ProxyConnector$State;

    aput-object v1, v0, v6

    sput-object v0, Lorg/swiftp/ProxyConnector$State;->ENUM$VALUES:[Lorg/swiftp/ProxyConnector$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/swiftp/ProxyConnector$State;
    .locals 1

    const-class v0, Lorg/swiftp/ProxyConnector$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/swiftp/ProxyConnector$State;

    return-object v0
.end method

.method public static values()[Lorg/swiftp/ProxyConnector$State;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/swiftp/ProxyConnector$State;->ENUM$VALUES:[Lorg/swiftp/ProxyConnector$State;

    array-length v1, v0

    new-array v2, v1, [Lorg/swiftp/ProxyConnector$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
