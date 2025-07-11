.class final Lcom/netease/ntunisdk/base/function/d$1;
.super Ljava/lang/Object;
.source "LoginPlugin.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/function/d;->a(Lcom/netease/ntunisdk/base/SdkBase;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/netease/ntunisdk/base/SdkBase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 35
    check-cast p1, Lcom/netease/ntunisdk/base/SdkBase;

    check-cast p2, Lcom/netease/ntunisdk/base/SdkBase;

    const-string v0, "LOGIN_PLUGIN_PRIORITY"

    const/4 v1, 0x0

    .line 1038
    invoke-virtual {p2, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/function/d$1$$ExternalSyntheticBackport0;->m(II)I

    move-result p1

    return p1
.end method
