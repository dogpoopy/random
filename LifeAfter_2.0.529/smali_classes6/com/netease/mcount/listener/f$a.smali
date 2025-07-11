.class Lcom/netease/mcount/listener/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mcount/listener/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/netease/mcount/listener/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netease/mcount/listener/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/mcount/listener/f;-><init>(Lcom/netease/mcount/listener/f$1;)V

    sput-object v0, Lcom/netease/mcount/listener/f$a;->a:Lcom/netease/mcount/listener/f;

    return-void
.end method

.method static synthetic a()Lcom/netease/mcount/listener/f;
    .locals 1

    sget-object v0, Lcom/netease/mcount/listener/f$a;->a:Lcom/netease/mcount/listener/f;

    return-object v0
.end method
