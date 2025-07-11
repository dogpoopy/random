.class public Lcom/netease/mpay/oversea/x2;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/x2;->a:I

    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method
