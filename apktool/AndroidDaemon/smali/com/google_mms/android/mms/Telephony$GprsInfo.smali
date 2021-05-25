.class public final Lcom/google_mms/android/mms/Telephony$GprsInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GPRS_IN:Ljava/lang/String; = "gprs_in"

.field public static final GPRS_OUT:Ljava/lang/String; = "gprs_out"

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/gprsinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$GprsInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
