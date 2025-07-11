.class public Lcom/netease/mpay/oversea/web/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public debug:Z

.field public domStorageEnabled:Z

.field public isLandscape:Z

.field public versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/web/Config;->isLandscape:Z

    iput-object p2, p0, Lcom/netease/mpay/oversea/web/Config;->versionCode:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netease/mpay/oversea/web/Config;->debug:Z

    iput-boolean p4, p0, Lcom/netease/mpay/oversea/web/Config;->domStorageEnabled:Z

    return-void
.end method
