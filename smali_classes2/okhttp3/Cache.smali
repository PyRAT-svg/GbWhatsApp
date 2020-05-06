.class public final Lokhttp3/Cache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Cache$b;,
        Lokhttp3/Cache$c;,
        Lokhttp3/Cache$a;
    }
.end annotation


# instance fields
.field final a:Lokhttp3/internal/cache/InternalCache;

.field final b:Lokhttp3/internal/cache/DiskLruCache;

.field c:I

.field d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1

    sget-object v0, Lokhttp3/internal/io/FileSystem;->SYSTEM:Lokhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/Cache;-><init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JLokhttp3/internal/io/FileSystem;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/Cache$1;

    invoke-direct {v0, p0}, Lokhttp3/Cache$1;-><init>(Lokhttp3/Cache;)V

    iput-object v0, p0, Lokhttp3/Cache;->a:Lokhttp3/internal/cache/InternalCache;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/cache/DiskLruCache;->create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method static a(Lokio/BufferedSource;)I
    .locals 5

    :try_start_0
    invoke-interface {p0}, Lokio/BufferedSource;->readDecimalLong()J

    move-result-wide v0

    invoke-interface {p0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "expected an int but was \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Lokhttp3/Response;Lokhttp3/Response;)V
    .locals 1

    new-instance v0, Lokhttp3/Cache$c;

    invoke-direct {v0, p1}, Lokhttp3/Cache$c;-><init>(Lokhttp3/Response;)V

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    check-cast p0, Lokhttp3/Cache$b;

    iget-object p0, p0, Lokhttp3/Cache$b;->a:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {v0, p0}, Lokhttp3/Cache$c;->a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-void

    :catch_0
    const/4 p0, 0x0

    :catch_1
    invoke-static {p0}, Lokhttp3/Cache;->a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    return-void
.end method

.method private static a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0
    .param p0    # Lokhttp3/internal/cache/DiskLruCache$Editor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-void
.end method

.method public static key(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->md5()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, v0}, Lokhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v2, Lokhttp3/Cache$c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object v3

    invoke-direct {v2, v3}, Lokhttp3/Cache$c;-><init>(Lokio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v2, v0}, Lokhttp3/Cache$c;->a(Lokhttp3/internal/cache/DiskLruCache$Snapshot;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lokhttp3/Cache$c;->a(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :catch_1
    return-object v1
.end method

.method final a(Lokhttp3/Response;)Lokhttp3/internal/cache/CacheRequest;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Cache;->b(Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2

    :cond_0
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    new-instance v0, Lokhttp3/Cache$c;

    invoke-direct {v0, p1}, Lokhttp3/Cache$c;-><init>(Lokhttp3/Response;)V

    :try_start_1
    iget-object v1, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_3

    return-object v2

    :cond_3
    :try_start_2
    invoke-virtual {v0, p1}, Lokhttp3/Cache$c;->a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    new-instance v0, Lokhttp3/Cache$a;

    invoke-direct {v0, p0, p1}, Lokhttp3/Cache$a;-><init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_1
    move-object p1, v2

    :catch_2
    invoke-static {p1}, Lokhttp3/Cache;->a(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    return-object v2
.end method

.method final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lokhttp3/internal/cache/CacheStrategy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/Cache;->g:I

    iget-object v0, p1, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v0, :cond_0

    iget p1, p0, Lokhttp3/Cache;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/Cache;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p1, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/Response;

    if-eqz p1, :cond_1

    iget p1, p0, Lokhttp3/Cache;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/Cache;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final b(Lokhttp3/Request;)V
    .locals 1

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/Cache;->key(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    return-void
.end method

.method public final delete()V
    .locals 1

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->delete()V

    return-void
.end method

.method public final directory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final evictAll()V
    .locals 1

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->evictAll()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    return-void
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final initialize()V
    .locals 1

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    return-void
.end method

.method public final isClosed()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final maxSize()J
    .locals 2

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized networkCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized requestCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final size()J
    .locals 2

    iget-object v0, p0, Lokhttp3/Cache;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lokhttp3/Cache$2;

    invoke-direct {v0, p0}, Lokhttp3/Cache$2;-><init>(Lokhttp3/Cache;)V

    return-object v0
.end method

.method public final declared-synchronized writeAbortCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized writeSuccessCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/Cache;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
