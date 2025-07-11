.class final Lcom/netease/mcount/e/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mcount/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "version"

    invoke-static {v0}, Lcom/netease/mcount/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mcount/e/a$a;->a:Ljava/lang/String;

    const-string v0, "config_key"

    invoke-static {v0}, Lcom/netease/mcount/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mcount/e/a$a;->b:Ljava/lang/String;

    const-string v0, "last_upload_client_info_time_key"

    invoke-static {v0}, Lcom/netease/mcount/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mcount/e/a$a;->c:Ljava/lang/String;

    const-string v0, "last_transaction_id_suffix"

    invoke-static {v0}, Lcom/netease/mcount/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mcount/e/a$a;->d:Ljava/lang/String;

    return-void
.end method
