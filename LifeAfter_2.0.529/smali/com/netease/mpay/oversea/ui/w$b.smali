.class Lcom/netease/mpay/oversea/ui/w$b;
.super Ljava/lang/Object;
.source "WebVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/w;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/ui/w;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/w$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w$b;->b:Lcom/netease/mpay/oversea/ui/w;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/w;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/w$b;->a:Ljava/lang/String;

    sget-object v3, Lcom/netease/mpay/oversea/s9;->o:Lcom/netease/mpay/oversea/s9;

    new-instance v4, Lcom/netease/mpay/oversea/ui/w$b$a;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/ui/w$b$a;-><init>(Lcom/netease/mpay/oversea/ui/w$b;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ui/w$a;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/x;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    return-void
.end method
