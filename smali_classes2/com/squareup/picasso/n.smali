.class final Lcom/squareup/picasso/n;
.super Lcom/squareup/picasso/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/n$b;,
        Lcom/squareup/picasso/n$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/Downloader;

.field private final b:Lcom/squareup/picasso/t;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Downloader;Lcom/squareup/picasso/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/picasso/RequestHandler;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/Downloader;

    iput-object p2, p0, Lcom/squareup/picasso/n;->b:Lcom/squareup/picasso/t;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method final a(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final canHandleRequest(Lcom/squareup/picasso/Request;)Z
    .locals 1

    iget-object p1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;
    .locals 5

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->isOfflineOnly(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    goto :goto_0

    :cond_0
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->shouldReadFromDiskCache(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    :cond_1
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->shouldWriteToDiskCache(I)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    :cond_2
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p1, Lcom/squareup/picasso/Request;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    if-eqz p2, :cond_4

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    :cond_4
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    iget-object v0, p0, Lcom/squareup/picasso/n;->a:Lcom/squareup/picasso/Downloader;

    invoke-interface {v0, p2}, Lcom/squareup/picasso/Downloader;->load(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    :goto_1
    sget-object p2, Lcom/squareup/picasso/Picasso$LoadedFrom;->DISK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    const-wide/16 v1, 0x0

    if-ne p1, p2, :cond_7

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    new-instance p1, Lcom/squareup/picasso/n$a;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lcom/squareup/picasso/n$a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    sget-object p2, Lcom/squareup/picasso/Picasso$LoadedFrom;->NETWORK:Lcom/squareup/picasso/Picasso$LoadedFrom;

    if-ne p1, p2, :cond_8

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-lez p2, :cond_8

    iget-object p2, p0, Lcom/squareup/picasso/n;->b:Lcom/squareup/picasso/t;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    iget-object v3, p2, Lcom/squareup/picasso/t;->c:Landroid/os/Handler;

    iget-object p2, p2, Lcom/squareup/picasso/t;->c:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    new-instance p2, Lcom/squareup/picasso/RequestHandler$Result;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/squareup/picasso/RequestHandler$Result;-><init>(Lokio/Source;Lcom/squareup/picasso/Picasso$LoadedFrom;)V

    return-object p2

    :cond_9
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    new-instance v0, Lcom/squareup/picasso/n$b;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    iget p1, p1, Lcom/squareup/picasso/Request;->c:I

    invoke-direct {v0, p2, p1}, Lcom/squareup/picasso/n$b;-><init>(II)V

    throw v0
.end method
