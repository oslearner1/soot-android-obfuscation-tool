.class public final Lcom/google_mms/android/mms/Telephony$MmsSms;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

.field public static final CONTENT_DRAFT_URI:Landroid/net/Uri;

.field public static final CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

.field public static final CONTENT_LOCKED_URI:Landroid/net/Uri;

.field public static final CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_QUICKTEXT:Landroid/net/Uri;

.field public static final ERR_TYPE_GENERIC:I = 0x1

.field public static final ERR_TYPE_GENERIC_PERMANENT:I = 0xa

.field public static final ERR_TYPE_MMS_PROTO_PERMANENT:I = 0xc

.field public static final ERR_TYPE_MMS_PROTO_TRANSIENT:I = 0x3

.field public static final ERR_TYPE_SMS_PROTO_PERMANENT:I = 0xb

.field public static final ERR_TYPE_SMS_PROTO_TRANSIENT:I = 0x2

.field public static final ERR_TYPE_TRANSPORT_FAILURE:I = 0x4

.field public static final MMS_PROTO:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field public static final SEARCH_URI:Landroid/net/Uri;

.field public static final SMS_PROTO:I = 0x0

.field public static final TYPE_DISCRIMINATOR_COLUMN:Ljava/lang/String; = "transport_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://mms-sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/messages/byphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$MmsSms;->CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$MmsSms;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/locked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/quicktext"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$MmsSms;->CONTENT_URI_QUICKTEXT:Landroid/net/Uri;

    const-string v0, "content://mms-sms/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
