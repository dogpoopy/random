.class public Lcom/netease/mpay/oversea/PaymentRequest$Builder;
.super Ljava/lang/Object;
.source "PaymentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/PaymentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lorg/json/JSONObject;

.field private h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->a:I

    return-void
.end method


# virtual methods
.method public build()Lcom/netease/mpay/oversea/PaymentRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/PaymentRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/PaymentRequest;-><init>(Lcom/netease/mpay/oversea/PaymentRequest$1;)V

    .line 2
    iget v1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->a:I

    iput v1, v0, Lcom/netease/mpay/oversea/PaymentRequest;->a:I

    .line 3
    iget v1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->h:F

    iput v1, v0, Lcom/netease/mpay/oversea/PaymentRequest;->g:F

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/oversea/PaymentRequest;->b:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->g:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/netease/mpay/oversea/PaymentRequest;->h:Lorg/json/JSONObject;

    .line 6
    iget v1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->f:I

    iput v1, v0, Lcom/netease/mpay/oversea/PaymentRequest;->f:I

    .line 7
    iget-object v1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/oversea/PaymentRequest;->d:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/oversea/PaymentRequest;->e:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/oversea/PaymentRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setGoodsCount(I)Lcom/netease/mpay/oversea/PaymentRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->f:I

    return-object p0
.end method

.method public setGoodsID(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setGoodsName(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setOrderID(Ljava/lang/String;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setOrderInfo(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/PaymentRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->g:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setPayMethod(I)Lcom/netease/mpay/oversea/PaymentRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->a:I

    return-object p0
.end method

.method public setPrice(F)Lcom/netease/mpay/oversea/PaymentRequest$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/mpay/oversea/PaymentRequest$Builder;->h:F

    return-object p0
.end method
