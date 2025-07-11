.class public abstract Lcom/netease/mpay/oversea/y;
.super Lcom/netease/mpay/oversea/z;
.source "BasePreference.java"


# instance fields
.field protected b:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/z;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/y;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/y;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method protected static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/netease/mpay/oversea/ca;->b([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/netease/mpay/oversea/ca;->a([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/u2;->a([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/String;[B)[B
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/u2;->b([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
