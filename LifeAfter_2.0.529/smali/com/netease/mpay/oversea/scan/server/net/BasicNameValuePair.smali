.class public Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/server/net/NameValuePair;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5957a9ad00a58146L


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;->name:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;->value:Ljava/lang/String;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method
