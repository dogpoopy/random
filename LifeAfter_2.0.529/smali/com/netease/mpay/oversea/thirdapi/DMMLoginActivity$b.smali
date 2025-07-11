.class Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$b;
.super Ljava/lang/Object;
.source "DMMLoginActivity.java"

# interfaces
.implements Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$b;->a:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$b;->a:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->b(Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$b;->a:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->c(Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onApiFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "B"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$b;->a:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$b;->a(Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$ErrorKind;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "B"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p2, "-1"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$b;->a:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/dmm/android/sdk/olgid/DmmOlgId;Lcom/dmm/android/sdk/olgid/DmmOlgIdAccessTokenCallback$Kind;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity$b;->a:Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->a(Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;)V

    return-void
.end method
