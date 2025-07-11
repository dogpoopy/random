.class public Lcom/netease/mcount/e/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2, p3}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mcount/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string p1, "create table event_table(id integer primary key autoincrement, ev_key varchar, timestamp long, carrier varchar, network_type varchar, vpn varchar, install_time long, segmentation varchar, client_log_header varchar)"

    iput-object p1, p0, Lcom/netease/mcount/e/a/a;->d:Ljava/lang/String;

    const-string p1, "DROP TABLE IF EXISTS event_table"

    iput-object p1, p0, Lcom/netease/mcount/e/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mcount/e/a/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mcount/e/a/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table event_table(id integer primary key autoincrement, ev_key varchar, timestamp long, carrier varchar, network_type varchar, vpn varchar, install_time long, segmentation varchar, client_log_header varchar)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mcount/e/a/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/e/a/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade: oldVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " newVersion = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS event_table"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/netease/mcount/e/a/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object p1, p0, Lcom/netease/mcount/e/a/a;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/netease/mcount/e/a/a;->c:Ljava/lang/String;

    const-string p3, "onUpgrade: Database upgraded."

    invoke-static {p1, p2, p3}, Lcom/netease/mcount/f/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
