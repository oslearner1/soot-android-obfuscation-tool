.class public final Lcom/google_mms/android/mms/Telephony;
.super Ljava/lang/Object;


# static fields
.field public static final SIMBackgroundRes:[I

.field private static final TAG:Ljava/lang/String; = "MyTelephony"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v1, v0, v1

    aput v2, v0, v2

    aput v3, v0, v3

    sput-object v0, Lcom/google_mms/android/mms/Telephony;->SIMBackgroundRes:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
