.class public Lcom/netease/mpay/httpdns/HttpDns$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/httpdns/HttpDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/netease/mpay/httpdns/HttpDns;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netease/mpay/httpdns/HttpDns;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/mpay/httpdns/HttpDns;-><init>(Lcom/netease/mpay/httpdns/HttpDns$a;)V

    sput-object v0, Lcom/netease/mpay/httpdns/HttpDns$d;->a:Lcom/netease/mpay/httpdns/HttpDns;

    return-void
.end method
