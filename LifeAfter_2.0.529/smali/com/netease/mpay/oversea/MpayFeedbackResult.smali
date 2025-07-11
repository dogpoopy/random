.class public Lcom/netease/mpay/oversea/MpayFeedbackResult;
.super Ljava/lang/Object;
.source "MpayFeedbackResult.java"


# static fields
.field public static ERR_INVALID_PARAMS:I = 0x3eb

.field public static ERR_LOGIN_FAILED:I = 0x3ea

.field public static ERR_NETWORK:I = 0x3e9

.field public static ERR_REQUIRE_LOGIN:I = 0x3ee

.field public static ERR_SERVER_ERROR:I = 0x3ec

.field public static SUCCESS:I


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;->a:I

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;->a:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isOK()Z
    .locals 2

    .line 1
    sget v0, Lcom/netease/mpay/oversea/MpayFeedbackResult;->SUCCESS:I

    iget v1, p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
