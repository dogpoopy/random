.class public Lcom/netease/mpay/oversea/ui/TransmissionData;
.super Ljava/lang/Object;
.source "TransmissionData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;,
        Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;,
        Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;,
        Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;,
        Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;,
        Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/netease/mpay/oversea/r4;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/netease/mpay/oversea/PaymentCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/netease/mpay/oversea/FeedbackCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/netease/mpay/oversea/SyncApiAuthCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/netease/mpay/oversea/ui/w$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData;->a:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData;->b:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData;->c:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData;->d:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData;->e:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData;->c:Ljava/util/HashMap;

    return-object v0
.end method
